cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2169"
  sha256 arm:   "fe4b6f3a1cc5ea34300fc12e7235e6c2411281fd8e39055c0d5ea0afaf749cf7",
         intel: "1711cfebd76e468562a7d0b982baf7266012c3f4de01b06f0de5e1bfd8509e5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
