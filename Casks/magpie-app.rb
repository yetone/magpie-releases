cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2235"
  sha256 arm:   "26b1ac0e081189f78866dec18565594721fc501b56b66b9a1d66c35b7ede1d66",
         intel: "86fc306580cb3704e6cb6e760fc2fb87ca019228f2f834971a41b579d6efbb04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
