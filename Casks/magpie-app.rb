cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3503"
  sha256 arm:   "6a24003a31d9f33e0eab8035ca51982b8513b7dc80cd9c3a921cc8edc9479b92",
         intel: "d90a9219d538c1a31dc86deb00973668a44c8a1b9722af76e23eadba3444e99d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
