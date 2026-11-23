cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4697"
  sha256 arm:   "aae54efb8b0bfeef26b380bc9b209b6c32a755ae19f70459d145700ee5cfff1b",
         intel: "74181d4bce76706f69a3a855a4927890cb451cc0fd64ee3dd2448eb942224fd3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
