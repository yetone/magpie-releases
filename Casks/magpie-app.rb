cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4584"
  sha256 arm:   "8184fc1239f7d240bd4785ede2b7c306c8eb82e65eb223a5bca8b7bb7695b673",
         intel: "73c30b7352383f01eda78811fa24daf1a7bd7f02751cc336da8e0b424211621d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
