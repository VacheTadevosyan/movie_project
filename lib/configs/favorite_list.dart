import 'package:movie_project/data/local/shared_preferans.dart';

class FavoriteList {

  Future<void> addId(int userId) async {
    final ids = await fetchFavoriteId();
    if (!ids.contains(userId)) {
      ids.add(userId);
      await saveFavoriteId(ids: ids);
    }
  }

  Future<void> removeId(int userId) async {
    final ids = await fetchFavoriteId();
    if (ids.contains(userId)) {
      ids.remove(userId);
      await saveFavoriteId(ids: ids);
    }
  }

  Future<List<int>> getIds() async {
    return await fetchFavoriteId();
  }

}
