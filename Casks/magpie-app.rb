cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1165"
  sha256 arm:   "aa6e96d76ff0bc4a8f2fb21dfd885327f9fa2a2d7aed5bed7c7901ec9395671f",
         intel: "c92511e4b9cbc6cf28188486984f4fd784d562b8cb1d56150146fe8eaba0f70c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
