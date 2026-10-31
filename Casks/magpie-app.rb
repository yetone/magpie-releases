cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2458"
  sha256 arm:   "6b12fd402dba37f9c235e65c48c9268714b46aa220b7cf1cec0628bbeb7baf74",
         intel: "e6a8e6d70ff59f1d4107ce098b587dc5a616f30d70b83f7c0f3d7ffbd7e79d07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
