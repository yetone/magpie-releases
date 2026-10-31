cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2292"
  sha256 arm:   "7fc6b61824e565f8c7114d01cb7ec83c75b9db637242e41445419892e8388cb1",
         intel: "acfb40f56eb7f81cc4a6803914052f30b1cb63d0ec3afce5073aa6636c60761c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
