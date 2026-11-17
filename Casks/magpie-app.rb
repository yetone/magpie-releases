cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4391"
  sha256 arm:   "6801398d57a1c0d0de4e887338defa0af4f2000b8e4ee4c273d322d3f74ed11b",
         intel: "501159e0462c495739b6196aecba4d7a08d4ae8ea7ff6b376ee1cbf276baa54b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
