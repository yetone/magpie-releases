cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2272"
  sha256 arm:   "0caf238ee8c6146ce60d6698cd9e00e2dc737ba67391cfb6312bbb6577be8bb1",
         intel: "3b6d272be296be809367f76ce6a6b4355b0204836452e8979bb82f48f25c5312"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
