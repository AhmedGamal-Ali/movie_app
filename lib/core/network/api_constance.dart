class ApiConstance{
  static String baseUrl="https://api.themoviedb.org/3";
  static String apiKey="3e0bff7da6209f8a5b83bdca9279e2da";

  static String nowPlayingMovie="$baseUrl/movie/now_playing?api_key=$apiKey";
  static String popularMovie="$baseUrl/movie/popular?api_key=$apiKey";
  static String topRatedMovie="$baseUrl/movie/top_rated?api_key=$apiKey";

  static String baseUrlImage="https://image.tmdb.org/t/p/w500";

 static String imageUrl(String path){
    return "$baseUrlImage$path";
  }
  static String movieDetail(int movieId){
    return "$baseUrl/movie/$movieId?api_key=$apiKey";
  }

  static String movieRecommendation(int movieId){
    return "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";
  }
}