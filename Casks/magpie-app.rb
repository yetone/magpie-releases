cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2407"
  sha256 arm:   "df58b7f0689cfdd7e444103131d9822d41bfbce5f90725427c5098f2b1e5d803",
         intel: "3041bb06f20c967d169811c39dde4a1e07bdcf27d600c2578dcd321752870670"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
