package com.doheum.yf.admin.dao;

import com.doheum.yf.model.UserVO;
import com.doheum.yf.model.YoutubeVO;

public interface AdminMapper {
	public void join(UserVO p);
	public void insertURL(YoutubeVO p);
}
