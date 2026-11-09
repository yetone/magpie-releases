cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3438"
  sha256 arm:   "ed5f3d8ca6253147ea67727ed8f7372f90b30b001daeb3adb11d450ad236afc1",
         intel: "087d871670c4dd91c903f5e95a323d80b9936d0f75bf90aede604355d297037d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
