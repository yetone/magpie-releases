cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4526"
  sha256 arm:   "622c01f9ddeb3928dcb0bd615b121c3536dc4a00217ede80512ad9aa872dbafd",
         intel: "da746dba367c2f8eb5fcc2929789df39ce7c14502c95878cc69aa327e917da3a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
