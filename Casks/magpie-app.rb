cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4927"
  sha256 arm:   "a24043081ef0f739944e26b39c2642f354f2f3d8404d76043038b9d2dbdb99f2",
         intel: "dce547626e1ca9b655b195a6791ec84ad7cab63f05702ebf1ed9098a431d04cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
