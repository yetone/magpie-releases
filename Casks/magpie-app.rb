cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3555"
  sha256 arm:   "25036951dd9ddba768cb88ce69eb125dbef7a1b2833271c12ade27fc9b514333",
         intel: "d1f1ea19a437dbdcb071e02d316b8f6f6090b276d5d78502898220854f645d36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
