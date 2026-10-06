cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1093"
  sha256 arm:   "32730d835a859b515a817d4ee97a86d8e39ca2ef6cb0ab86ef1591235c43aeb3",
         intel: "6f320550f1a721877aae3a94dd37209f2440d01cee89272f8189813a4ab6cfcc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
