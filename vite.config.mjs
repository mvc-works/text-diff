import { defineConfig } from 'vite';

// Keep local builds relative; production/PR builds receive their exact COS URL.
export default defineConfig({ base: process.env.VITE_BASE_URL || './' });
