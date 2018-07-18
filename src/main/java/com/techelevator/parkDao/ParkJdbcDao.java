package com.techelevator.parkDao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.Park;


@Component
public class ParkJdbcDao implements ParkDao
{

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public ParkJdbcDao(DataSource datasource)
	{
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public List<Park> getAllParks()
	{
		List<Park> allParks = new ArrayList<>();
		String allParksSql = "SELECT * FROM park ORDER BY parkname";
		SqlRowSet results = jdbcTemplate.queryForRowSet(allParksSql);
		while (results.next())
		{
			allParks.add(mapRowToPark(results));
			System.out.println(results);
		}
		return allParks;
	}

	private Park mapRowToPark(SqlRowSet results)
	{
		Park parks = new Park();

		parks.setParkcode(results.getString("parkcode"));
		parks.setParkdescription(results.getString("parkdescription"));
		parks.setParkname(results.getString("parkname"));
		parks.setState(results.getString("state"));
		parks.setAcreage(results.getInt("acreage"));
		parks.setElevationinfeet(results.getInt("elevationinfeet"));
		parks.setMilesoftrail(results.getFloat("milesoftrail"));
		parks.setNumberofcampsites(results.getInt("numberofcampsites"));
		parks.setClimate(results.getString("climate"));
		parks.setYearfounded(results.getInt("yearfounded"));
		parks.setInspirationalquote(results.getString("inspirationalquote"));
		parks.setInspirationalquote(results.getString("inspirationalquotesource"));
		parks.setEntryfee(results.getInt("entryfee"));
		parks.setNumberofanimalspecies(results.getInt("numberofanimalspecies"));

		return parks;
	}

}
