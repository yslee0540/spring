package com.multi.mvc02;

public class ChartVO {
	private String movie;
	private double score;

	@Override
	public String toString() {
		return "ChartVO [movie=" + movie + ", score=" + score + "]";
	}

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

}
