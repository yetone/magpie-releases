cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4176"
  sha256 arm:   "f4c590be8d4923daeab7dc75a7d1a6947e93d94a95a23a9ae52b8d9e517749a5",
         intel: "1c85afa8cd38b49638ac9ac6809ce82c79a705987ea74f71818a297d7cec8db6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
