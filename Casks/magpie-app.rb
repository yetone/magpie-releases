cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2896"
  sha256 arm:   "905be035523db77cc78ebcb58fe626f9201467925e4228d0ced5e3213680552e",
         intel: "aabc054f1f4df8442aa206db4d19ae7ab4b84bbc32136d724aad90d263cb9e2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
