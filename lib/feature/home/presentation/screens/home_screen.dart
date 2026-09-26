import 'package:carwash/core/extensions/context_extension.dart';
import 'package:carwash/core/routes/app_routes.dart';
import 'package:carwash/core/theme/theme_constants.dart';
import 'package:carwash/feature/home/presentation/widgets/service_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CarWash'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.registerScreen);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Banner Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary,
                      colorScheme.primary.withValues(alpha: 0.8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: AppBorders.lg,
                  boxShadow: AppShadows.card,
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Welcome to CarWash 👋',
                      style: textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Book your next car wash service easily and track progress in real time.',
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onPrimary.withValues(alpha: 0.9),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: AppSpacing.lg),

              // Quick Actions Header
              Text(
                'Services & Actions',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),

              // Grid of placeholder feature cards
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: AppSpacing.md,
                crossAxisSpacing: AppSpacing.md,
                childAspectRatio: 1.1,
                children: [
                  ServiceCard(
                    icon: Icons.local_car_wash,
                    title: 'Book Wash',
                    subtitle: 'Choose package',
                    color: colorScheme.primaryContainer,
                    onTap: () {
                      context.showSnackBar('Book Wash feature coming soon!');
                    },
                  ),
                  ServiceCard(
                    icon: Icons.history,
                    title: 'My Bookings',
                    subtitle: 'View active washes',
                    color: colorScheme.secondaryContainer,
                    onTap: () {
                      context.showSnackBar('My Bookings feature coming soon!');
                    },
                  ),
                  ServiceCard(
                    icon: Icons.location_on,
                    title: 'Nearest Wash',
                    subtitle: 'Find stations',
                    color: colorScheme.tertiaryContainer,
                    onTap: () {
                      context.showSnackBar('Nearest Wash feature coming soon!');
                    },
                  ),
                  ServiceCard(
                    icon: Icons.person,
                    title: 'My Profile',
                    subtitle: 'Manage account',
                    color: colorScheme.surfaceContainerHighest,
                    onTap: () {
                      context.showSnackBar('My Profile coming soon!');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



