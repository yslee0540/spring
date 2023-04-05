package com.multi.mvc02;

public class RestVO {
	private String location;
	private double lat;
	private double lon;
	private String movie;
	private double score;

	public String getMovie() {
		return movie;
	}

	public void setMovie(String movie) {
		this.movie = movie;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

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
		return "RestVO [location=" + location + ", lat=" + lat + ", lon=" + lon + ", movie=" + movie + ", score="
				+ score + "]";
	}

}
