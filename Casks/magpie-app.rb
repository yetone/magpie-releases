cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2474"
  sha256 arm:   "cbb761b7a802ae924cc693dea887343f05a176d09d213bdc152ae030cca7884a",
         intel: "0b9ccfef61d1eb2741c29ec418e177b9f4e723d19d535eef046b3d42d7c3f93e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
