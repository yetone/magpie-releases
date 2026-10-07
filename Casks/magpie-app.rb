cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1105"
  sha256 arm:   "32c31474b5fb55142a1a1f4794b97e5e2744d52a9adf5164e625fcd13a0d3404",
         intel: "b2addf5016ac70476f9121f50f1d2b079bbce0603dd99998df33e0bbabb80d62"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
