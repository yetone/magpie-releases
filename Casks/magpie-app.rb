cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3908"
  sha256 arm:   "e0bbe4ea95b417776ddb69c8057b0975d59c1c1487c7684702f8895644f4477e",
         intel: "caea4fc0bc0055c7605ade06264f4a5115b7b64fd396c646d77af52d0265669c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
