cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2226"
  sha256 arm:   "2bb6bbf1f4b5451de789c4a62ecb151c4fd1f1ba5c56e3008203b73de1ffeb01",
         intel: "5bce14876a8894e4efaff3aabce571c4ca173c0863a6753e033d784eb80653e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
