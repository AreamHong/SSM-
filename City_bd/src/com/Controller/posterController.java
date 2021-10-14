package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dao.posterMapper;
import com.pojo.Cityposter;
import com.pojo.Citypostertype;
import com.util.pageUtil;
// 广告----陈旭超
@Controller
@RequestMapping("/poster")
public class posterController {
	
	@Resource
	posterMapper dao;
	
	// 分页查询
	@RequestMapping("/list")
	public String list(Cityposter p,int index,Map map){
		// 每页数据量
		int size = 10;
		// 分页查询
		List<Cityposter> list = dao.sellist(p.getPostertypeid(),p.getStore(),(index-1)*size,size);
		// 获取总页数
		int count = dao.count(p);
		// 计算总页数
		int pageCount = count % size == 0 ? count / size :count / size + 1;
		// 分页功能对象
		pageUtil<Cityposter> pList = new pageUtil<Cityposter>();
		
		pList.setList(list);
		pList.setPagecount(pageCount);
		pList.setIndex(index);
		
		map.put("p", pList);
		map.put("postertype", dao.seltype());
		map.put("postertypeid", p.getPostertypeid());
		map.put("posterstore", p.getStore());
		map.put("count", list.size());
		return "advertising_list";
	}
	// 查询所有可以放广告的地方
	@RequestMapping("/seltype")
	public String seltype(Map map){
		List<Citypostertype> listType = dao.seltype();
		
		map.put("postertype", listType);
		map.put("poster", new Cityposter());
		return "advertising";
	}
	// 单个删除
	@RequestMapping("/delId")
	@ResponseBody
	public Object delId(int id){
		int result = dao.delId(id);
		return result;
	}
	// 多个删除
	@RequestMapping("/delAll")
	@ResponseBody
	public Object delAll(String str){
		List<Integer> list = new ArrayList<Integer>();
		for (String i : str.split(",")) {
			if(i!=null && i!=""){
				list.add(new Integer(i));
			}
		}
		int result = dao.delAll(list);
		return result;
	}
	// 根据id进行查询所有信息跳转修改页面使用
	@RequestMapping("/selId")
	public String selId(int id,Map map){
		// 根据id查询广告对象
		Cityposter cityposter = dao.selId(id);
		// 查询所有可以放广告的地方
		List<Citypostertype> listType = dao.seltype();
		map.put("postertype", listType);
		map.put("poster", cityposter);
		return "advertising";
	}
	// 修改和添加
	@RequestMapping("/upadd")
	public Object upadd(@RequestParam("f1")MultipartFile fileObj,Cityposter p,HttpServletRequest request) throws IllegalStateException,IOException{
		
		// 判断是否上传图片
		if(fileObj.getOriginalFilename()!=null&&fileObj.getOriginalFilename()!=""){
			// 已上传图片
			
			// fileObj 客户端文件对象
			// 文件上传的路径
			String pathString = request.getSession().getServletContext().getRealPath("poster");
			// 唯一性,根据当前时间产生一个32位的随机字符串
			String newname = UUID.randomUUID().toString();
			// 把这个对象传递给新的文件对象
			File f1 = new File(pathString+"/"+newname+".jpg");
			if(!f1.exists()){
				f1.mkdirs();
			}
			fileObj.transferTo(f1);
			p.setPostername(newname+".jpg");
		}
		int result = 0;
		if(p.getId()!=0){
			// 修改
			result = dao.upd(p);
		}else{
			// 添加
			result = dao.add(p);
		}
		return "redirect:/poster/list?index=1";
	}
	// 查看广告播放队列
	@RequestMapping("/selStore")
	@ResponseBody
	public Object selStore(int pid){
		int result = dao.selStore(pid);
		// 每个播放广告的地方只播放四个广告
		if(result == 4){
			return "n";
		}
		return "y";
	}
	// 批量修改广告播放状态
		@RequestMapping("/updStore")
		@ResponseBody
		public Object updStore(String str,int store){
			List<Integer> list = new ArrayList<Integer>();
			for (String i : str.split(",")) {
				if(i!=null && i!=""){
					list.add(new Integer(i));
				}
			}
			int result = dao.updStore(store, list);
			return result;
		}
}
