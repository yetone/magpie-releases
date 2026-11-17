cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4354"
  sha256 arm:   "0e5869146173c7b52645d7fee805509a88f23cda0fd779887210765ebaafbeef",
         intel: "a3665615bbb1e54f8ddd38e770047acba05cc2d48a2a68819e5528a3006ea7df"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
