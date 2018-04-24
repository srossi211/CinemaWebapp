package entity;
import java.util.*;


public class Movie
{
	private int movie_id;
	private String title;
	private String castlist;
	private String genre;
	private String producer;
	private String director;
	private String synopsis;
	private String trailer;
	private String images;
	private int rating;

	public Movie(int movie_id, String title, String castlist, String genre, String producer, String director, String synopsis, String trailer, String images, int rating)
	{
		this.movie_id=movie_id;
		this.title=title;
		this.castlist=castlist;
		this.genre=genre;
		this.producer=producer;
		this.director=director;
		this.synopsis=synopsis;
		this.trailer=trailer;
		this.images=images;
		this.rating=rating;
	}

	public int getMovieId(){
		return movie_id;
	}

	public String getTitle(){
		return title;
	}
	public void setMovieTitle(String t){
		this.title=t;
	}

	public String getCastList(){
		return castlist;
	}

	public void setCastList(String c){
		this.castlist=c;
	}
	public String getGenre(){
		return genre;
	}
	public void setGenre(String g){
		this.genre=g;
	}
	public String getProducer(){
		return producer;
	}
	public void setProducer(String p){
		this.producer=p;
	}
	public String getDirector(){
		return director;
	}
	public void serDirector(String d){ 
		this.director=d;
	}
	public String getSynopsis(){
		return synopsis;
	}
	public void setSynopsis(String s){
		this.synopsis=s;
	}
	// public String getReviews(){
	// 	return reviews;
	// // }
	// public void setReviews(String [] r){
	// 	this.reviews=r;
	// }
	public String getTrailer(){
		return trailer;
	}
	public void setTrailer(String t) {
		this.trailer=t;
	}
	public String getImages(){
		return images;
	}
	public void setImages(String i) {
		this.images=i;
	}
	public int getRating(){
		return rating;
	}
	public void setRating(int r) {
		this.rating=r;
	}
}