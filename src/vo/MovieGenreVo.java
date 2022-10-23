package vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MovieGenreVo {

	private int genre_id;
	private int movie_id;
	private String filenames;
	private String movie_title;
	private String runtime;
	private Date release_date;
	private String poster_url;

	/*
	 * public String getPoster_url() { return poster_url; } public void
	 * setPoster_url(String poster_url) { this.poster_url = poster_url; }
	 * 
	 * SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
	 * //원하는 데이터 포맷 지정 String strDate = simpleDateFormat.format(release_date);
	 * 
	 * public MovieGenreVo() { // TODO Auto-generated constructor stub } public
	 * MovieGenreVo(int genre_id,int movie_id,String filenames,String
	 * movie_title,String poster_url,String runtime,Date release_date) {
	 * this.genre_id=genre_id; this.movie_id=movie_id; this.filenames=filenames;
	 * this.movie_title=movie_title; this.runtime=runtime;
	 * this.release_date=release_date; this.poster_url=poster_url;
	 * 
	 * } public int getGenre_id() { return genre_id; } public void setGenre_id(int
	 * genre_id) { this.genre_id = genre_id; } public int getMovie_id() { return
	 * movie_id; } public void setMovie_id(int movie_id) { this.movie_id = movie_id;
	 * } public String getFilenames() { return filenames; } public void
	 * setFilenames(String filenames) { this.filenames = filenames; } public String
	 * getMovie_title() { return movie_title; } public void setMovie_title(String
	 * movie_title) { this.movie_title = movie_title; } public String getRuntime() {
	 * return runtime; } public void setRuntime(String runtime) { this.runtime =
	 * runtime; } public Date getRelease_date() { return release_date; } public void
	 * setRelease_date(Date release_date) { this.release_date = release_date; }
	 */

}
