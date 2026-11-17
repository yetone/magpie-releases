cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4349"
  sha256 arm:   "7b4bbb2e9e5717ba655c407d2e757c0765d4b3989a3df62ae5e027af22e7a657",
         intel: "81943df5592ef75c877163b8277b526101589f62590a67ce1dd35a4e901aca9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
