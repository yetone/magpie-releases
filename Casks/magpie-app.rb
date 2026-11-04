cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2967"
  sha256 arm:   "5eb2d63492bf77aabdc5efabaf89c039ce459b49b73236d31107eee2f83eed81",
         intel: "1b2700170ad5d9123493f3ec197a6fde885a669e9a4f9925eb846317e19a90d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
