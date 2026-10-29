cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1979"
  sha256 arm:   "b0701b3709223a40465336471857db4f3d6641de991aaf7fbb47552b0be65ded",
         intel: "bbc2d24e5692e827ef6425a98dea36db810c050646d25004a785741be1d577cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
