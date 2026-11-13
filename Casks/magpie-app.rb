cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4002"
  sha256 arm:   "3ce064c4076b85bc2e8e99cb8bda0f40d6c4508998eda1eea5acf7bf75c02c20",
         intel: "06d11d909a9912c97b332a1c95d37b5c0b6486e244c6d72c33f7625f73712bff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
