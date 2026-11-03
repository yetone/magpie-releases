cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2884"
  sha256 arm:   "5596c3e738c8f39190f8419feedc073170797b64c9bdaacceef33ad9319df1d3",
         intel: "5ffad72a514b139eb5d4967d198ec1422e5ce2c09e912bca4903997b086252f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
