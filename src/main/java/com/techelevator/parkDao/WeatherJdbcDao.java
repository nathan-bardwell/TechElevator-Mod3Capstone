package com.techelevator.parkDao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class WeatherJdbcDao implements WeatherDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public WeatherJdbcDao(DataSource datasource)
	{
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

}
