# Create lib directory structure
$libDirs = @(
    "lib/core/constants",
    "lib/core/theme",
    "lib/core/localization/l10n",
    "lib/core/error",
    "lib/core/network",
    "lib/core/utils",
    "lib/core/widgets",
    "lib/core/routes",
    "lib/features/auth/domain/entities",
    "lib/features/auth/domain/repositories",
    "lib/features/auth/domain/usecases",
    "lib/features/auth/data/models",
    "lib/features/auth/data/datasources",
    "lib/features/auth/data/repositories",
    "lib/features/auth/presentation/providers",
    "lib/features/auth/presentation/pages",
    "lib/features/auth/presentation/widgets",
    "lib/features/reminders/domain/entities",
    "lib/features/reminders/domain/repositories",
    "lib/features/reminders/domain/usecases",
    "lib/features/reminders/data/models",
    "lib/features/reminders/data/datasources",
    "lib/features/reminders/data/repositories",
    "lib/features/reminders/presentation/providers",
    "lib/features/reminders/presentation/pages",
    "lib/features/reminders/presentation/widgets",
    "lib/features/journal/domain/entities",
    "lib/features/journal/domain/repositories",
    "lib/features/journal/domain/usecases",
    "lib/features/journal/data/models",
    "lib/features/journal/data/datasources",
    "lib/features/journal/data/repositories",
    "lib/features/journal/presentation/providers",
    "lib/features/journal/presentation/pages",
    "lib/features/journal/presentation/widgets",
    "lib/features/voice_recording/domain/entities",
    "lib/features/voice_recording/domain/repositories",
    "lib/features/voice_recording/domain/usecases",
    "lib/features/voice_recording/data/models",
    "lib/features/voice_recording/data/datasources",
    "lib/features/voice_recording/data/repositories",
    "lib/features/voice_recording/presentation/providers",
    "lib/features/voice_recording/presentation/pages",
    "lib/features/voice_recording/presentation/widgets",
    "lib/features/legacy_mode/domain/entities",
    "lib/features/legacy_mode/domain/repositories",
    "lib/features/legacy_mode/domain/usecases",
    "lib/features/legacy_mode/data/models",
    "lib/features/legacy_mode/data/datasources",
    "lib/features/legacy_mode/data/repositories",
    "lib/features/legacy_mode/presentation/providers",
    "lib/features/legacy_mode/presentation/pages",
    "lib/features/legacy_mode/presentation/widgets",
    "lib/features/backup_sync/domain/entities",
    "lib/features/backup_sync/domain/repositories",
    "lib/features/backup_sync/domain/usecases",
    "lib/features/backup_sync/data/models",
    "lib/features/backup_sync/data/datasources",
    "lib/features/backup_sync/data/repositories",
    "lib/features/backup_sync/presentation/providers",
    "lib/features/backup_sync/presentation/pages",
    "lib/features/backup_sync/presentation/widgets",
    "lib/features/widgets/domain/entities",
    "lib/features/widgets/domain/repositories",
    "lib/features/widgets/data/models",
    "lib/features/widgets/data/datasources",
    "lib/features/widgets/data/repositories",
    "lib/features/widgets/presentation/providers",
    "lib/features/widgets/presentation/widgets",
    "lib/features/notifications/domain/entities",
    "lib/features/notifications/domain/repositories",
    "lib/features/notifications/data/models",
    "lib/features/notifications/data/datasources",
    "lib/features/notifications/data/services",
    "lib/features/notifications/data/repositories",
    "lib/features/notifications/presentation/providers",
    "lib/features/notifications/presentation/pages",
    "lib/features/notifications/presentation/widgets",
    "lib/features/home/presentation/providers",
    "lib/features/home/presentation/pages",
    "lib/features/home/presentation/widgets",
    "lib/services/database",
    "lib/services/storage",
    "lib/services/device",
    "lib/config"
)

# Create assets directory structure
$assetDirs = @(
    "assets/images/logo",
    "assets/images/illustrations/onboarding",
    "assets/images/icons/emotion_icons",
    "assets/fonts/bengali",
    "assets/fonts/english/Poppins",
    "assets/animations/lottie",
    "assets/animations/rive",
    "assets/audio/notification_sounds"
)

# Create test directory structure
$testDirs = @(
    "test/unit/features/reminders",
    "test/unit/features/journal",
    "test/unit/features/voice_recording",
    "test/unit/core",
    "test/widget/features",
    "test/integration/features"
)

# Create firebase directory structure
$firebaseDirs = @(
    "firebase/functions/src/reminders",
    "firebase/functions/src/backup",
    "firebase/functions/src/notifications"
)

# Create all directories
Write-Host "Creating directories..." -ForegroundColor Green
foreach ($dir in $libDirs + $assetDirs + $testDirs + $firebaseDirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

# Create lib files
$libFiles = @{
    "lib/main.dart" = ""
    "lib/app.dart" = ""
    "lib/injection_container.dart" = ""
    "lib/core/constants/app_constants.dart" = ""
    "lib/core/constants/firebase_constants.dart" = ""
    "lib/core/constants/storage_constants.dart" = ""
    "lib/core/constants/widget_constants.dart" = ""
    "lib/core/theme/app_theme.dart" = ""
    "lib/core/theme/app_colors.dart" = ""
    "lib/core/theme/app_typography.dart" = ""
    "lib/core/theme/bengali_typography.dart" = ""
    "lib/core/localization/app_localizations.dart" = ""
    "lib/core/localization/l10n/app_bn.arb" = ""
    "lib/core/localization/l10n/app_en.arb" = ""
    "lib/core/localization/bengali_text_constants.dart" = ""
    "lib/core/error/exceptions.dart" = ""
    "lib/core/error/failures.dart" = ""
    "lib/core/error/error_messages.dart" = ""
    "lib/core/network/network_info.dart" = ""
    "lib/core/network/api_client.dart" = ""
    "lib/core/network/firebase_client.dart" = ""
    "lib/core/utils/date_formatter.dart" = ""
    "lib/core/utils/bengali_date_converter.dart" = ""
    "lib/core/utils/audio_utils.dart" = ""
    "lib/core/utils/validators.dart" = ""
    "lib/core/utils/encryption_helper.dart" = ""
    "lib/core/utils/permission_handler.dart" = ""
    "lib/core/widgets/bengali_text_field.dart" = ""
    "lib/core/widgets/custom_button.dart" = ""
    "lib/core/widgets/loading_indicator.dart" = ""
    "lib/core/widgets/error_widget.dart" = ""
    "lib/core/widgets/empty_state_widget.dart" = ""
    "lib/core/routes/app_router.dart" = ""
    "lib/core/routes/app_router.gr.dart" = ""
    "lib/core/routes/route_guards.dart" = ""
    "lib/features/auth/domain/entities/user.dart" = ""
    "lib/features/auth/domain/repositories/auth_repository.dart" = ""
    "lib/features/auth/domain/usecases/sign_in_usecase.dart" = ""
    "lib/features/auth/domain/usecases/sign_up_usecase.dart" = ""
    "lib/features/auth/domain/usecases/sign_out_usecase.dart" = ""
    "lib/features/auth/domain/usecases/get_current_user_usecase.dart" = ""
    "lib/features/auth/data/models/user_model.dart" = ""
    "lib/features/auth/data/datasources/auth_remote_datasource.dart" = ""
    "lib/features/auth/data/datasources/auth_local_datasource.dart" = ""
    "lib/features/auth/data/repositories/auth_repository_impl.dart" = ""
    "lib/features/auth/presentation/providers/auth_state_provider.dart" = ""
    "lib/features/auth/presentation/providers/auth_controller_provider.dart" = ""
    "lib/features/auth/presentation/pages/sign_in_page.dart" = ""
    "lib/features/auth/presentation/pages/sign_up_page.dart" = ""
    "lib/features/auth/presentation/pages/profile_page.dart" = ""
    "lib/features/auth/presentation/widgets/auth_form.dart" = ""
    "lib/features/auth/presentation/widgets/social_login_buttons.dart" = ""
    "lib/features/reminders/domain/entities/reminder.dart" = ""
    "lib/features/reminders/domain/entities/emotion_tag.dart" = ""
    "lib/features/reminders/domain/repositories/reminder_repository.dart" = ""
    "lib/features/reminders/domain/usecases/create_reminder_usecase.dart" = ""
    "lib/features/reminders/domain/usecases/update_reminder_usecase.dart" = ""
    "lib/features/reminders/domain/usecases/delete_reminder_usecase.dart" = ""
    "lib/features/reminders/domain/usecases/get_reminders_usecase.dart" = ""
    "lib/features/reminders/domain/usecases/get_reminder_by_emotion_usecase.dart" = ""
    "lib/features/reminders/domain/usecases/schedule_notification_usecase.dart" = ""
    "lib/features/reminders/data/models/reminder_model.dart" = ""
    "lib/features/reminders/data/models/emotion_tag_model.dart" = ""
    "lib/features/reminders/data/datasources/reminder_remote_datasource.dart" = ""
    "lib/features/reminders/data/datasources/reminder_local_datasource.dart" = ""
    "lib/features/reminders/data/repositories/reminder_repository_impl.dart" = ""
    "lib/features/reminders/presentation/providers/reminder_list_provider.dart" = ""
    "lib/features/reminders/presentation/providers/reminder_filter_provider.dart" = ""
    "lib/features/reminders/presentation/providers/reminder_form_provider.dart" = ""
    "lib/features/reminders/presentation/pages/reminders_list_page.dart" = ""
    "lib/features/reminders/presentation/pages/create_reminder_page.dart" = ""
    "lib/features/reminders/presentation/pages/reminder_details_page.dart" = ""
    "lib/features/reminders/presentation/pages/emotion_filter_page.dart" = ""
    "lib/features/reminders/presentation/widgets/reminder_card.dart" = ""
    "lib/features/reminders/presentation/widgets/reminder_chip.dart" = ""
    "lib/features/reminders/presentation/widgets/emotion_selector.dart" = ""
    "lib/features/reminders/presentation/widgets/bengali_date_picker.dart" = ""
    "lib/features/reminders/presentation/widgets/reminder_notification_settings.dart" = ""
    "lib/features/journal/domain/entities/journal_entry.dart" = ""
    "lib/features/journal/domain/entities/voice_note.dart" = ""
    "lib/features/journal/domain/entities/written_note.dart" = ""
    "lib/features/journal/domain/repositories/journal_repository.dart" = ""
    "lib/features/journal/domain/usecases/create_journal_entry_usecase.dart" = ""
    "lib/features/journal/domain/usecases/update_journal_entry_usecase.dart" = ""
    "lib/features/journal/domain/usecases/delete_journal_entry_usecase.dart" = ""
    "lib/features/journal/domain/usecases/get_journal_entries_usecase.dart" = ""
    "lib/features/journal/domain/usecases/search_journal_usecase.dart" = ""
    "lib/features/journal/domain/usecases/export_journal_usecase.dart" = ""
    "lib/features/journal/data/models/journal_entry_model.dart" = ""
    "lib/features/journal/data/models/voice_note_model.dart" = ""
    "lib/features/journal/data/models/written_note_model.dart" = ""
    "lib/features/journal/data/datasources/journal_remote_datasource.dart" = ""
    "lib/features/journal/data/datasources/journal_local_datasource.dart" = ""
    "lib/features/journal/data/repositories/journal_repository_impl.dart" = ""
    "lib/features/journal/presentation/providers/journal_entries_provider.dart" = ""
    "lib/features/journal/presentation/providers/journal_search_provider.dart" = ""
    "lib/features/journal/presentation/providers/journal_form_provider.dart" = ""
    "lib/features/journal/presentation/pages/journal_list_page.dart" = ""
    "lib/features/journal/presentation/pages/create_journal_page.dart" = ""
    "lib/features/journal/presentation/pages/journal_entry_page.dart" = ""
    "lib/features/journal/presentation/pages/journal_search_page.dart" = ""
    "lib/features/journal/presentation/widgets/journal_card.dart" = ""
    "lib/features/journal/presentation/widgets/journal_calendar_view.dart" = ""
    "lib/features/journal/presentation/widgets/journal_timeline.dart" = ""
    "lib/features/journal/presentation/widgets/written_note_editor.dart" = ""
    "lib/features/journal/presentation/widgets/journal_export_options.dart" = ""
    "lib/features/voice_recording/domain/entities/voice_recording.dart" = ""
    "lib/features/voice_recording/domain/entities/transcription.dart" = ""
    "lib/features/voice_recording/domain/repositories/voice_repository.dart" = ""
    "lib/features/voice_recording/domain/usecases/record_voice_usecase.dart" = ""
    "lib/features/voice_recording/domain/usecases/stop_recording_usecase.dart" = ""
    "lib/features/voice_recording/domain/usecases/play_recording_usecase.dart" = ""
    "lib/features/voice_recording/domain/usecases/transcribe_voice_usecase.dart" = ""
    "lib/features/voice_recording/domain/usecases/delete_recording_usecase.dart" = ""
    "lib/features/voice_recording/data/models/voice_recording_model.dart" = ""
    "lib/features/voice_recording/data/models/transcription_model.dart" = ""
    "lib/features/voice_recording/data/datasources/voice_local_datasource.dart" = ""
    "lib/features/voice_recording/data/datasources/transcription_service.dart" = ""
    "lib/features/voice_recording/data/repositories/voice_repository_impl.dart" = ""
    "lib/features/voice_recording/presentation/providers/voice_recorder_provider.dart" = ""
    "lib/features/voice_recording/presentation/providers/voice_player_provider.dart" = ""
    "lib/features/voice_recording/presentation/providers/transcription_provider.dart" = ""
    "lib/features/voice_recording/presentation/pages/voice_recording_page.dart" = ""
    "lib/features/voice_recording/presentation/widgets/voice_recorder_widget.dart" = ""
    "lib/features/voice_recording/presentation/widgets/voice_player_widget.dart" = ""
    "lib/features/voice_recording/presentation/widgets/waveform_visualizer.dart" = ""
    "lib/features/voice_recording/presentation/widgets/recording_timer.dart" = ""
    "lib/features/voice_recording/presentation/widgets/transcription_display.dart" = ""
    "lib/features/legacy_mode/domain/entities/legacy_story.dart" = ""
    "lib/features/legacy_mode/domain/entities/family_member.dart" = ""
    "lib/features/legacy_mode/domain/repositories/legacy_repository.dart" = ""
    "lib/features/legacy_mode/domain/usecases/create_legacy_story_usecase.dart" = ""
    "lib/features/legacy_mode/domain/usecases/share_legacy_story_usecase.dart" = ""
    "lib/features/legacy_mode/domain/usecases/get_legacy_stories_usecase.dart" = ""
    "lib/features/legacy_mode/domain/usecases/add_family_member_usecase.dart" = ""
    "lib/features/legacy_mode/data/models/legacy_story_model.dart" = ""
    "lib/features/legacy_mode/data/models/family_member_model.dart" = ""
    "lib/features/legacy_mode/data/datasources/legacy_remote_datasource.dart" = ""
    "lib/features/legacy_mode/data/datasources/legacy_local_datasource.dart" = ""
    "lib/features/legacy_mode/data/repositories/legacy_repository_impl.dart" = ""
    "lib/features/legacy_mode/presentation/providers/legacy_stories_provider.dart" = ""
    "lib/features/legacy_mode/presentation/providers/family_tree_provider.dart" = ""
    "lib/features/legacy_mode/presentation/providers/legacy_form_provider.dart" = ""
    "lib/features/legacy_mode/presentation/pages/legacy_home_page.dart" = ""
    "lib/features/legacy_mode/presentation/pages/create_legacy_story_page.dart" = ""
    "lib/features/legacy_mode/presentation/pages/family_tree_page.dart" = ""
    "lib/features/legacy_mode/presentation/pages/legacy_story_viewer_page.dart" = ""
    "lib/features/legacy_mode/presentation/widgets/legacy_story_card.dart" = ""
    "lib/features/legacy_mode/presentation/widgets/family_member_tile.dart" = ""
    "lib/features/legacy_mode/presentation/widgets/story_template_selector.dart" = ""
    "lib/features/legacy_mode/presentation/widgets/legacy_share_options.dart" = ""
    "lib/features/backup_sync/domain/entities/backup_data.dart" = ""
    "lib/features/backup_sync/domain/repositories/backup_repository.dart" = ""
    "lib/features/backup_sync/domain/usecases/create_backup_usecase.dart" = ""
    "lib/features/backup_sync/domain/usecases/restore_backup_usecase.dart" = ""
    "lib/features/backup_sync/domain/usecases/sync_data_usecase.dart" = ""
    "lib/features/backup_sync/domain/usecases/get_backup_history_usecase.dart" = ""
    "lib/features/backup_sync/data/models/backup_data_model.dart" = ""
    "lib/features/backup_sync/data/datasources/backup_local_datasource.dart" = ""
    "lib/features/backup_sync/data/datasources/backup_remote_datasource.dart" = ""
    "lib/features/backup_sync/data/repositories/backup_repository_impl.dart" = ""
    "lib/features/backup_sync/presentation/providers/backup_status_provider.dart" = ""
    "lib/features/backup_sync/presentation/providers/sync_settings_provider.dart" = ""
    "lib/features/backup_sync/presentation/pages/backup_settings_page.dart" = ""
    "lib/features/backup_sync/presentation/widgets/backup_status_card.dart" = ""
    "lib/features/backup_sync/presentation/widgets/sync_indicator.dart" = ""
    "lib/features/backup_sync/presentation/widgets/backup_history_list.dart" = ""
    "lib/features/widgets/domain/entities/widget_config.dart" = ""
    "lib/features/widgets/domain/repositories/widget_repository.dart" = ""
    "lib/features/widgets/data/models/widget_config_model.dart" = ""
    "lib/features/widgets/data/datasources/widget_local_datasource.dart" = ""
    "lib/features/widgets/data/repositories/widget_repository_impl.dart" = ""
    "lib/features/widgets/presentation/providers/home_widget_provider.dart" = ""
    "lib/features/widgets/presentation/widgets/memory_card_widget.dart" = ""
    "lib/features/widgets/presentation/widgets/voice_note_widget.dart" = ""
    "lib/features/widgets/presentation/widgets/reminder_chip_widget.dart" = ""
    "lib/features/widgets/presentation/widgets/widget_configurator.dart" = ""
    "lib/features/notifications/domain/entities/notification_settings.dart" = ""
    "lib/features/notifications/domain/repositories/notification_repository.dart" = ""
    "lib/features/notifications/data/models/notification_settings_model.dart" = ""
    "lib/features/notifications/data/datasources/notification_local_datasource.dart" = ""
    "lib/features/notifications/data/services/local_notification_service.dart" = ""
    "lib/features/notifications/data/services/firebase_messaging_service.dart" = ""
    "lib/features/notifications/data/repositories/notification_repository_impl.dart" = ""
    "lib/features/notifications/presentation/providers/notification_settings_provider.dart" = ""
    "lib/features/notifications/presentation/pages/notification_settings_page.dart" = ""
    "lib/features/notifications/presentation/widgets/notification_preference_card.dart" = ""
    "lib/features/home/presentation/providers/home_state_provider.dart" = ""
    "lib/features/home/presentation/providers/bottom_nav_provider.dart" = ""
    "lib/features/home/presentation/pages/home_page.dart" = ""
    "lib/features/home/presentation/pages/dashboard_page.dart" = ""
    "lib/features/home/presentation/widgets/custom_bottom_nav.dart" = ""
    "lib/features/home/presentation/widgets/dashboard_stats_card.dart" = ""
    "lib/features/home/presentation/widgets/quick_actions_grid.dart" = ""
    "lib/features/home/presentation/widgets/recent_memories_list.dart" = ""
    "lib/services/database/local_database.dart" = ""
    "lib/services/database/database_tables.dart" = ""
    "lib/services/database/database_migrations.dart" = ""
    "lib/services/storage/secure_storage_service.dart" = ""
    "lib/services/storage/file_storage_service.dart" = ""
    "lib/services/device/device_info_service.dart" = ""
    "lib/services/device/connectivity_service.dart" = ""
    "lib/config/firebase_config.dart" = ""
    "lib/config/app_config.dart" = ""
    "lib/config/environment.dart" = ""
}

# Create root and firebase files
$rootFiles = @{
    "pubspec.yaml" = ""
    "analysis_options.yaml" = ""
    "README.md" = ""
    ".gitignore" = ""
    "firebase/firestore.rules" = ""
    "firebase/firestore.indexes.json" = ""
    "firebase/storage.rules" = ""
    "firebase/functions/src/index.ts" = ""
    "firebase/functions/package.json" = ""
}

# Create all files
Write-Host "Creating files..." -ForegroundColor Green
foreach ($file in ($libFiles.Keys + $rootFiles.Keys)) {
    New-Item -ItemType File -Path $file -Force | Out-Null
}

Write-Host "`nProject structure created successfully!" -ForegroundColor Green
Write-Host "Total directories created: $($libDirs.Count + $assetDirs.Count + $testDirs.Count + $firebaseDirs.Count)" -ForegroundColor Cyan
Write-Host "Total files created: $($libFiles.Count + $rootFiles.Count)" -ForegroundColor Cyan