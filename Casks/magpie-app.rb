cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2818"
  sha256 arm:   "6550997f8852de3aa8a8ae72021a410df071ae1f8b81e0b4447637c656740e1d",
         intel: "6d296006a62a234cd3f7151340bbce8b3c4531e025f02d2e7d3fc638dfa62158"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
