cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5052"
  sha256 arm:   "929223dc0d56df41e77f9a81c038191e07556bb6dd55a8e30f663e62353dcdb7",
         intel: "45687c0850be18d1f552815bca1ef599004c8b7f5ccc2236ff2b4f9ff1ac997a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
