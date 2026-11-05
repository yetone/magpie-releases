cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3037"
  sha256 arm:   "30a5df24f540e5bcbe0eaebc0844692e10477230efdad39116c0cb00fc09b289",
         intel: "93b5d79a65ce593222b40e81998f3755db744813616e0784443938166196352d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
