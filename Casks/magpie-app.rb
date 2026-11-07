cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3221"
  sha256 arm:   "81c19276eb752b4b441ca06a3d32bb079264999786ddf66969d9cd351ae924f0",
         intel: "e1acfd66123737e3494a10777625f2c965ec7602b7e33a4279c88ddc127292a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
