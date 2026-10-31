cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2457"
  sha256 arm:   "45900d9abcdeb8937e880171ffd33d5440035de3602f7a257f2f230591b7cce6",
         intel: "ddf41ea9e476b0b8f8d5ba20211e1b3e6b106fb6f84a59aef710e2dbec8d31f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
