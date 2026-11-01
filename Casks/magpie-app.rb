cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2564"
  sha256 arm:   "1e4d727e56e16dae5b2caca7903f600b6bde440bcdf50052db513f2e0375389b",
         intel: "5b0d68b07aa90e6c2d672f340680f483f1f9640870bb228dad008c1842f1aa96"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
