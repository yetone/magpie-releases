cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3650"
  sha256 arm:   "695a3c77ee03acf83d9c89c84876e5187d1a98d6e21e84b16bc63066d3d65331",
         intel: "870e7746fac10bcfa0567d760de8d3f954665859b66df8515bd0d9a804479461"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
