package com.multi.mvc02;

public class MapVO {
	private String location;
	private double lat;
	private double lon;

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLon() {
		return lon;
	}

	public void setLon(double lon) {
		this.lon = lon;
	}

	@Override
	public String toString() {
		return "RestVO [location=" + location + ", lat=" + lat + ", lon=" + lon + "]";
	}

}
