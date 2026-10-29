cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1985"
  sha256 arm:   "552236e4a52d4421911632105afbb26a0c707fc02c9fa36ec4ed6d98c8c9e10f",
         intel: "15363ac82689761df2a0710e613f576606b8d5091c5aa456b76e22f9f8d32b58"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
