cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2951"
  sha256 arm:   "bba3f0c269a467a6492a0e986e0fdee31667bbce62234a3fe8d095598d414a58",
         intel: "3171b8393799df2e3a23854b6db8643dda7d0e9c3c272a70c06ba5f9fb62477a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
