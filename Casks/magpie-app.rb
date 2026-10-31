cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2306"
  sha256 arm:   "2772025a93a107482f8dd5a92e2cf63d7e15c252917b2249b325b39b5f1aee8f",
         intel: "8b50c4e0abd5f2d88ba31070e996ace48a5962643b651c19576b154bc94b787c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
