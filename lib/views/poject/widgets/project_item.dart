class ProjectItem {
  final String image;
  final String title;
  final String discription;
  final List<String> technologies;
  ProjectItem({
    required this.image,
    required this.title,
    required this.discription,
    required this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
    image: '',
    title: 'title',
    discription: '',
    technologies: [],
  ),
];
