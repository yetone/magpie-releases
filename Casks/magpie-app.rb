cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3016"
  sha256 arm:   "96851f1466142abb21e48fc775dd7ef36015b99f80ff7d1f7faf3f516f0e515f",
         intel: "b8bbba40be2382387c88f6a9095ba3b7e9cac502934ab2402d671915b479d98f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
