cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3138"
  sha256 arm:   "3984dbfc6f9c3b6daf7ed06c169a0f1625fc050e77a38456585bfdacf4e941da",
         intel: "48e0a3567ecf556cddb3f0a171ca23a8eab01adf49ae8cf87fbdf42e5f0dd3b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
