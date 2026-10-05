cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1061"
  sha256 arm:   "826389b19d923895bd31e8996424423d73d1715c22dd590de1d0402bb37e01f2",
         intel: "5576f9500ea1a32d37d8377780dd7e48f0eb79db8f47a05612e57699ac45737c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
