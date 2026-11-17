cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4370"
  sha256 arm:   "9c2119df64fde941d0c856972a240e76f3404494b84b7610717ce5d61fed1d79",
         intel: "819887e942b190adfac820c69e5304d463bb2544bfee11cee40611bfab360d3a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
