cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2735"
  sha256 arm:   "540c8a9d8f15e7a27262f499fccd1e4e27f9012eeff77e09455c3add3aae0979",
         intel: "287ef1845724f240d585ec5d718bfceebbd1b4c7a056827a95ade2f70234fe76"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
