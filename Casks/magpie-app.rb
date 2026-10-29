cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2036"
  sha256 arm:   "1fe6186f0ef587dd962fbf3b7478a46e8a51e59360fe712f7248c09f3295aa58",
         intel: "a4193202fa0548f642e425590d9103d7989151d99a397dcfe06ab96b46fa2732"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
