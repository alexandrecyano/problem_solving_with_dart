/*
Find the problem description and the solution approach in here. 
https://structy.net/problems/undirected-path

*/
void main() {
  var edges = [
    ['i', 'j'],
    ['k', 'i'],
    ['m', 'k'],
    ['k', 'l'],
    ['o', 'n']
  ];

  Solution.undirectedPath(edges, 'j', 'm');
}

class Solution {
  static bool undirectedPath(List<List<String>> edges, nodeA, nodeB) {
    Map<String, List<String>> graph = {};
    for (var edge in edges) {
      String a = edge.first;
      String b = edge.last;

      if (!graph.containsKey(a)) {
        graph[a] = [];
      }
      if (!graph.containsKey(b)) {
        graph[b] = [];
      }
      graph[a]!.add(b);
      graph[b]!.add(a);
    }

    Set visited = {};

    bool hasPath(graph, String src, String dst, visited) {
      if (visited.contains(src)) return false;
      if (src == dst) return true;

      visited.add(src);
      for (var neighbor in graph[src]!) {
        if (hasPath(graph, neighbor, dst, visited) == true) {
          return true;
        }
      }

      return false;
    }

    print(hasPath(graph, nodeA, nodeB, visited));
    return hasPath(graph, nodeA, nodeB, visited);
  }
}
